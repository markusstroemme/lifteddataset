@global_var_44d70 = external constant [4 x i8]
@global_var_5b01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_cac0:
  %stack_var_-64.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_5b01c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_cb0d, label %dec_label_pc_caee

dec_label_pc_caee:                                ; preds = %dec_label_pc_cac0
  %4 = call ptr @malloc(i32 10)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_cb0d, label %dec_label_pc_cb03

dec_label_pc_cb03:                                ; preds = %dec_label_pc_caee
  call void @exit(i32 -1)
  unreachable

dec_label_pc_cb0d:                                ; preds = %dec_label_pc_caee, %dec_label_pc_cac0
  %stack_var_-64.0.reload = load i64, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %8 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %9 = call ptr @memcpy(ptr %8, ptr nonnull %stack_var_-56, i32 40)
  %10 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  call void @free(ptr %8)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_cb7b, label %dec_label_pc_cb76

dec_label_pc_cb76:                                ; preds = %dec_label_pc_cb0d
  call void @__stack_chk_fail()
  br label %dec_label_pc_cb7b

dec_label_pc_cb7b:                                ; preds = %dec_label_pc_cb76, %dec_label_pc_cb0d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

