@global_var_1000 = external global ptr
@global_var_81443 = external constant [3 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3b2e4:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3b330

dec_label_pc_3b330:                               ; preds = %dec_label_pc_3b330, %dec_label_pc_3b2e4
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3b347, label %dec_label_pc_3b330

dec_label_pc_3b347:                               ; preds = %dec_label_pc_3b330
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3b3b2

dec_label_pc_3b3b2:                               ; preds = %dec_label_pc_3b3b2, %dec_label_pc_3b347
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3b3c9, label %dec_label_pc_3b3b2

dec_label_pc_3b3c9:                               ; preds = %dec_label_pc_3b3b2
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %9, i32 100, ptr @global_var_81443, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %9)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_3b48b, label %dec_label_pc_3b486

dec_label_pc_3b486:                               ; preds = %dec_label_pc_3b3c9
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b48b

dec_label_pc_3b48b:                               ; preds = %dec_label_pc_3b486, %dec_label_pc_3b3c9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

