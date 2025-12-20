@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.359() local_unnamed_addr {
dec_label_pc_fbd0:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_fd6a:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %stack_var_-28 = alloca i32, align 4
  %2 = call i64 @__readfsqword(i64 40)
  store i32 5, ptr %stack_var_-28, align 4
  %3 = call i32 @staticReturnsTrue.359()
  %4 = call i32 @staticReturnsTrue.359()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_fdbd, label %dec_label_pc_fdb0

dec_label_pc_fdb0:                                ; preds = %dec_label_pc_fd6a
  %6 = icmp eq i32 %3, 0
  %spec.select = select i1 %6, ptr %1, ptr %stack_var_-28
  %7 = load i32, ptr %spec.select, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_fdbd

dec_label_pc_fdbd:                                ; preds = %dec_label_pc_fdb0, %dec_label_pc_fd6a
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %2, %8
  br i1 %9, label %dec_label_pc_fdd2, label %dec_label_pc_fdcd

dec_label_pc_fdcd:                                ; preds = %dec_label_pc_fdbd
  call void @__stack_chk_fail()
  br label %dec_label_pc_fdd2

dec_label_pc_fdd2:                                ; preds = %dec_label_pc_fdcd, %dec_label_pc_fdbd
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

