@global_var_811d0 = external constant [16 x i8]
@global_var_811f8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b97f:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_ba39, label %dec_label_pc_b9ab

dec_label_pc_b9ab:                                ; preds = %dec_label_pc_b97f
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_b9ee, label %dec_label_pc_b9fd

dec_label_pc_b9ee:                                ; preds = %dec_label_pc_b9ab
  call void @printLine(ptr @global_var_811d0)
  br label %dec_label_pc_ba39

dec_label_pc_b9fd:                                ; preds = %dec_label_pc_b9ab
  %7 = call i32 @atoi(ptr nonnull %4)
  %8 = load i32, ptr @global_var_b8070, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %7, 1
  %or.cond = or i1 %10, %9
  br i1 %or.cond, label %dec_label_pc_ba39, label %dec_label_pc_ba0d

dec_label_pc_ba0d:                                ; preds = %dec_label_pc_b9fd
  %11 = icmp sgt i32 %7, 1073741822
  br i1 %11, label %dec_label_pc_ba2a, label %dec_label_pc_ba16

dec_label_pc_ba16:                                ; preds = %dec_label_pc_ba0d
  %12 = mul i32 %7, 2
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_ba39

dec_label_pc_ba2a:                                ; preds = %dec_label_pc_ba0d
  call void @printLine(ptr @global_var_811f8)
  br label %dec_label_pc_ba39

dec_label_pc_ba39:                                ; preds = %dec_label_pc_b9ee, %dec_label_pc_b97f, %dec_label_pc_ba2a, %dec_label_pc_ba16, %dec_label_pc_b9fd
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_ba4e, label %dec_label_pc_ba49

dec_label_pc_ba49:                                ; preds = %dec_label_pc_ba39
  call void @__stack_chk_fail()
  br label %dec_label_pc_ba4e

dec_label_pc_ba4e:                                ; preds = %dec_label_pc_ba49, %dec_label_pc_ba39
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

