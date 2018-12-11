.. _file_read_meta:

ファイルメタデータの取得
========================

.. http:get:: /1/(tenantId)/files/(bucketName)/(fileName)/meta

    ファイル1件のメタデータを取得する。

    :reqheader X-Application-Id: アプリケーションID(必須)
    :reqheader X-Application-Key: アプリケーションキー(必須)
    :reqheader X-Session-Token: セッショントークン(オプション)

    :parameter string bucketName: バケット名
    :parameter string fileName: ファイル名

    :query int published: 1を指定すると公開済みファイル一覧のみ取得となる
    :query int deleteMark: 1を指定すると、論理削除ファイルも含む

    :statuscode 200: 正常に受け付けた
    :statuscode 400: パラメータ不正
    :statuscode 401: 認証エラー
    :statuscode 403: 権限エラー
    :statuscode 404: 該当バケットまたはファイルが存在しない

    :>json string _id: ファイルID
    :>json string filename: ファイル名
    :>json string contentType: Content-Type
    :>json int length: ファイルサイズ
    :>json object ACL: ACL
    :>json string createdAt: 作成日時
    :>json string updatedAt: 更新日時
    :>json string metaETag: メタデータETag
    :>json string fileETag: ファイルETag
    :>json boolean cacheDisabled: キャッシュ無効フラグ
    :>json string publicUrl: 公開URL
    :>json object options: オプション
    :>json boolean _deleted: 論理削除フラグ

    **レスポンスボディ**

    ファイルメタデータが JSON で得られる。以下に例を示す。

    .. code-block:: json

        {
            "_id": "533d31c43cbc3dd2d0b32cd1",
            "filename": "hello.txt",
            "contentType": "text/plain",
            "length": 12,
            "ACL": { },
            "createdAt": "2013-08-27T04:37:30.000Z",
            "updatedAt": "2013-08-27T04:37:30.000Z",
            "metaETag": "8c92c97e-01a7-11e4-9598-53792c688d1b",
            "fileETag": "8c92c97e-01a7-11e4-9598-53792c688d1c",
            "cacheDisabled": false,
            "publicUrl": "http://...." ,
            "options": {
                "owner": "日電 太郎",
                "fileVersion": "1.0.0"
            }
        }

    deleteMark パラメータに1を指定した場合、論理削除されたメタデータも読み込まれる。

    論理削除されたデータは、"_deleted" フィールドに true が設定されている。
    この場合、サーバ側でファイル本体は削除されているが、メタデータは削除されずに残っている状態である。
