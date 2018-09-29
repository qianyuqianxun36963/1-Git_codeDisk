<template>
  <div>
    <Row>
        <Col span="6">
            <Card>
                <Tree :data="data" :render="renderContent" ></Tree>
            </Card>
        </Col>
        <Col span="18">
            <Card>
                <div id="area" style="background-color:grey;width:100%;height:800px">
                    <router-view></router-view>
                </div>
            </Card>
        </Col>
    </Row>
  </div>

</template>

<script>
    export default {
        data () {
            return {
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
                                            },
                                            {
                                                "text":"规则3",
                                                "expanded":false,
                                                "iconCls":null,
                                                "guid":"580CE758B39205DCE053B73A780AD721",
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
                data5: [
                    {
                        title: 'parent',
                        expand: true,
                        render: (h, { root, node, data }) => {
                            return h('span', {
                                style: {
                                    display: 'inline-block',
                                    width: '100%'
                                }
                            }, [
                                h('span', [
                                    h('Icon', {
                                        props: {
                                            type: 'ios-folder-outline'
                                        },
                                        style: {
                                            marginRight: '8px'
                                        }
                                    }),
                                    h('span', data.title)
                                ]),
                                h('span', {
                                    style: {
                                        display: 'inline-block',
                                        float: 'right',
                                        marginRight: '32px'
                                    }
                                }, [
                                    h('Button', {
                                        props: Object.assign({}, this.buttonProps, {
                                            icon: 'ios-add',
                                            type: 'primary'
                                        }),
                                        style: {
                                            width: '64px'
                                        },
                                        on: {
                                            click: () => { this.append(data) }
                                        }
                                    })
                                ])
                            ]);
                        },
                        children: [
                            {
                                title: 'child 1-1',
                                expand: true,
                                children: [
                                    {
                                        title: 'leaf 1-1-1',
                                        expand: true
                                    },
                                    {
                                        title: 'leaf 1-1-2',
                                        expand: true
                                    }
                                ]
                            },
                            {
                                title: 'child 1-2',
                                expand: true,
                                children: [
                                    {
                                        title: 'leaf 1-2-1',
                                        expand: true
                                    },
                                    {
                                        title: 'leaf 1-2-1',
                                        expand: true
                                    }
                                ]
                            }
                        ]
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
                            alert(data.pdu+data.guid);
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
            },
            renderContent5 (h, { root, node, data }) {
                return h('span', {
                    style: {
                        display: 'inline-block',
                        width: '100%'
                    }
                }, [
                    h('span', [
                        h('Icon', {
                            props: {
                                type: 'ios-folder-outline'
                            },
                            style: {
                                marginRight: '8px'
                            }
                        }),
                        h('span', data.text)
                    ]),
                    h('span', {
                        style: {
                            display: 'inline-block',
                            float: 'right',
                            marginRight: '32px'
                        }
                    }, [
                        h('Button', {
                            props: Object.assign({}, this.buttonProps, {
                                icon: 'ios-add'
                            }),
                            style: {
                                marginRight: '8px'
                            },
                            on: {
                                click: () => { this.append(data) }
                            }
                        }),
                        h('Button', {
                            props: Object.assign({}, this.buttonProps, {
                                icon: 'ios-remove'
                            }),
                            on: {
                                click: () => { this.remove(root, node, data) }
                            }
                        })
                    ])
                ]);
            },
            append (data) {
                const children = data.children || [];
                children.push({
                    title: 'appended node',
                    expand: true
                });
                this.$set(data, 'children', children);
            },
            remove (root, node, data) {
                const parentKey = root.find(el => el === node).parent;
                const parent = root.find(el => el.nodeKey === parentKey).node;
                const index = parent.children.indexOf(data);
                parent.children.splice(index, 1);
            }
        }
    }

    const User = {
        template: '<div>User</div>'
    }

    const router = new VueRouter({
        routes: [
            // 动态路径参数 以冒号开头
            { path: '/user/:id', component: User }
        ]
    })
</script>