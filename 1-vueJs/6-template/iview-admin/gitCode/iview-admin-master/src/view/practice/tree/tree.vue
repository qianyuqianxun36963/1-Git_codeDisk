<template>
  <div>
    <Row>
        <Col span="6">
            <Card>
                <router-link to="/showArea">showArea</router-link>
                <Tree :data="data" :render="renderContent" id="tree"></Tree>
            </Card>
        </Col>
        <Col span="18">
            <show-area :style="{display:displayShow}"></show-area>
            <edit-area :style="{display:displayEdit}"></edit-area>
        </Col>
    </Row>
  </div>

</template>

<script>
    import Vue from "vue";
    import VueRouter from "vue-router";
    import ShowArea from './showArea.vue';
    import EditArea from './editArea.vue';

    export default {
        components: {
            ShowArea,
            EditArea
        },

        data () {
            return {
                displayShow : "show",
                displayEdit : "none",
                data : [
                    {
                        "text":"CGN",
                        "expanded":false,
                        "iconCls":null,
                        "guid":null,
                        "leaf":false,
                        "pdu":null,
                        "children":[
                            {
                                "text":"CGN(双机)场景",
                                "expanded":false,
                                "iconCls":null,
                                "guid":null,
                                "leaf":false,
                                "pdu":null,
                                "children":[
                                    {
                                        "text":"子场景规则",
                                        "expanded":false,
                                        "iconCls":null,
                                        "guid":null,
                                        "leaf":false,
                                        "pdu":null,
                                        "children":[
                                            {
                                                "text":"规则2",
                                                "expanded":false,
                                                "iconCls":null,
                                                "guid":"580CE758B38F05DCE053B73A780AD720",
                                                "leaf":true,
                                                "pdu":"FW",
                                                "children":null,
                                                "scene_id":null
                                            },
                                            {
                                                "text":"规则3",
                                                "expanded":false,
                                                "iconCls":null,
                                                "guid":"580CE758B38F05DCE053B73A780AD722",
                                                "leaf":true,
                                                "pdu":"FW",
                                                "children":null,
                                                "scene_id":null
                                            }
                                        ],
                                        "scene_id":null
                                    },
                                    {
                                        "text":"测试数据",
                                        "expanded":false,
                                        "iconCls":null,
                                        "guid":null,
                                        "leaf":true,
                                        "pdu":"FW",
                                        "children":null,
                                        "scene_id":"68EA62243A367DBCE053B73A780AB77F"
                                    }
                                ],
                                "scene_id":"68EA62243A367DBCE053B73A780AB77F"
                            },
                            {
                                "text":"CGN(单机)场景",
                                "expanded":false,
                                "iconCls":null,
                                "guid":null,
                                "leaf":false,
                                "pdu":null,
                                "children":[
                                    {
                                        "text":"子场景规则",
                                        "expanded":false,
                                        "iconCls":null,
                                        "guid":null,
                                        "leaf":false,
                                        "pdu":null,
                                        "children":[
                                            {
                                                "text":"规则2",
                                                "expanded":false,
                                                "iconCls":null,
                                                "guid":"580CE758B39205DCE053B73A780AD722",
                                                "leaf":true,
                                                "pdu":"FW",
                                                "children":null,
                                                "scene_id":null
                                            }
                                        ],
                                        "scene_id":null
                                    },
                                    {
                                        "text":"测试数据",
                                        "expanded":false,
                                        "iconCls":null,
                                        "guid":null,
                                        "leaf":true,
                                        "pdu":"FW",
                                        "children":null,
                                        "scene_id":"68EA62243A397DBCE053B73A780AB77F"
                                    }
                                ],
                                "scene_id":"68EA62243A397DBCE053B73A780AB77F"
                            }
                        ],
                        "scene_id":null
                    },
                    {
                        "text":"僵木蠕场景",
                        "expanded":false,
                        "iconCls":null,
                        "guid":null,
                        "leaf":false,
                        "pdu":null,
                        "children":[
                            {
                                "text":"僵木蠕场景",
                                "expanded":false,
                                "iconCls":null,
                                "guid":null,
                                "leaf":false,
                                "pdu":null,
                                "children":[
                                    {
                                        "text":"子场景规则",
                                        "expanded":false,
                                        "iconCls":null,
                                        "guid":null,
                                        "leaf":false,
                                        "pdu":null,
                                        "children":[
                                            {
                                                "text":"规则1",
                                                "expanded":false,
                                                "iconCls":null,
                                                "guid":"6B5BE82F5CE7EA8EE053B73A780A9B06",
                                                "leaf":true,
                                                "pdu":"FW",
                                                "children":null,
                                                "scene_id":null
                                            },
                                            {
                                                "text":"规则2",
                                                "expanded":false,
                                                "iconCls":null,
                                                "guid":"6B5BE82F5CE8EA8EE053B73A780A9B06",
                                                "leaf":true,
                                                "pdu":"FW",
                                                "children":null,
                                                "scene_id":null
                                            }
                                        ],
                                        "scene_id":null
                                    },
                                    {
                                        "text":"测试数据",
                                        "expanded":false,
                                        "iconCls":null,
                                        "guid":null,
                                        "leaf":true,
                                        "pdu":"FW",
                                        "children":null,
                                        "scene_id":"6B5BE82F5CE6EA8EE053B73A780A9B06"
                                    }
                                ],
                                "scene_id":"6B5BE82F5CE6EA8EE053B73A780A9B06"
                            }
                        ],
                        "scene_id":null
                    }
                ],
                buttonProps: {
                    type: 'default',
                    size: 'small',
                }
            }
        },
        methods: {
            renderContent (h, { root, node, data }) {
                return h('span', {
                    class: "ivu-tree-title",
                    style: {
                        display: 'inline-block',
                        width: '100%'
                    },
                    on: {
                        click() {
                            if(data.guid == null){
                                displayShow = "show";
                                displayEdit = "none";
                            }else{
                                displayShow = "show";
                                displayEdit = "none";
                            }
                        }
                    }
                }, [
                    h('span', [
                        h('Icon', {
                            props: {
                                type: 'ios-folder-outline'
                                //type: data.title.includes('child') ? 'ios-folder-outline' : 'ios-paper-outline'
                            },
                            style: {
                                marginRight: '8px'
                            }
                        }),
                        h('span', data.text)
                    ])
                ]);
            }
        }
    }

</script>