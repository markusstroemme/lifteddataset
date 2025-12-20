@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_f89a:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_f8e3

dec_label_pc_f8e3:                                ; preds = %dec_label_pc_f8e3, %dec_label_pc_f89a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_f8fa, label %dec_label_pc_f8e3

dec_label_pc_f8fa:                                ; preds = %dec_label_pc_f8e3
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_f965

dec_label_pc_f965:                                ; preds = %dec_label_pc_f965, %dec_label_pc_f8fa
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_f97c, label %dec_label_pc_f965

dec_label_pc_f97c:                                ; preds = %dec_label_pc_f965
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  call void @anon0(i64 %8)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_f9f1, label %dec_label_pc_f9ec

dec_label_pc_f9ec:                                ; preds = %dec_label_pc_f97c
  call void @__stack_chk_fail()
  br label %dec_label_pc_f9f1

dec_label_pc_f9f1:                                ; preds = %dec_label_pc_f9ec, %dec_label_pc_f97c
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_fa88:
  %stack_var_-120 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strcat(ptr %0, ptr nonnull %3)
  call void @printLine(ptr %0)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_fb06, label %dec_label_pc_fb01

dec_label_pc_fb01:                                ; preds = %dec_label_pc_fa88
  call void @__stack_chk_fail()
  br label %dec_label_pc_fb06

dec_label_pc_fb06:                                ; preds = %dec_label_pc_fb01, %dec_label_pc_fa88
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

