# -*- coding=utf-8
from qcloud_cos import CosConfig
from qcloud_cos import CosS3Client
from qcloud_cos import CosServiceError
from qcloud_cos import CosClientError

# appid已在配置中移除,请在参数Bucket中带上appid。Bucket由bucketname-appid组成
# 1. 设置用户配置, 包括 secretId，secretKey 以及 Region
secret_id = 'AKIDHRUkrnwCevaB2ivGmu570nPq6FE2CCa5'      # 替换为用户的 secretId
secret_key = 'KZeYKvLnEUfgYeBbqvFi5HZlmeOPJ7lF'      # 替换为用户的 secretKey
region = 'ap-shanghai'     # 替换为用户的 Region
token = ''                  # 使用临时秘钥需要传入 Token，默认为空，可不填
config = CosConfig(Secret_id=secret_id, Secret_key=secret_key, Region=region, Token=token)
# 2. 获取客户端对象
client = CosS3Client(config)
# 参照下文的描述。或者参照 Demo程序，详见 https://github.com/tencentyun/cos-python-sdk-v5/blob/master/qcloud_cos/demo.py
# 

response = client.head_object(Bucket='mylife-1255399141', Key='1.jpg')
#response = client.list_objects(Bucket='mylife-1255399141')