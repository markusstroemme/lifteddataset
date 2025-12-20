@global_var_810b0 = external constant [16 x i8]
@global_var_810d8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_af73:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_b02f, label %dec_label_pc_afa0

dec_label_pc_afa0:                                ; preds = %dec_label_pc_af73
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_b8080, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_afe3, label %dec_label_pc_aff2

dec_label_pc_afe3:                                ; preds = %dec_label_pc_afa0
  call void @printLine(ptr @global_var_810b0)
  br label %dec_label_pc_b02f

dec_label_pc_aff2:                                ; preds = %dec_label_pc_afa0
  %8 = call i32 @atoi(ptr nonnull %5)
  %9 = load i32, ptr @global_var_b8014, align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  %12 = icmp slt i32 %8, 1
  %or.cond = or i1 %12, %11
  br i1 %or.cond, label %dec_label_pc_b02f, label %dec_label_pc_b003

dec_label_pc_b003:                                ; preds = %dec_label_pc_aff2
  %13 = icmp sgt i32 %8, 1073741822
  br i1 %13, label %dec_label_pc_b020, label %dec_label_pc_b00c

dec_label_pc_b00c:                                ; preds = %dec_label_pc_b003
  %14 = mul i32 %8, 2
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_b02f

dec_label_pc_b020:                                ; preds = %dec_label_pc_b003
  call void @printLine(ptr @global_var_810d8)
  br label %dec_label_pc_b02f

dec_label_pc_b02f:                                ; preds = %dec_label_pc_afe3, %dec_label_pc_af73, %dec_label_pc_b020, %dec_label_pc_b00c, %dec_label_pc_aff2
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_b044, label %dec_label_pc_b03f

dec_label_pc_b03f:                                ; preds = %dec_label_pc_b02f
  call void @__stack_chk_fail()
  br label %dec_label_pc_b044

dec_label_pc_b044:                                ; preds = %dec_label_pc_b03f, %dec_label_pc_b02f
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

