@global_var_80fe8 = external constant [16 x i8]
@global_var_80ff8 = external constant [21 x i8]
@global_var_81010 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8010 = external local_unnamed_addr global i32
@global_var_b808c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a80d:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8010, align 4
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_a88b, label %dec_label_pc_a839

dec_label_pc_a839:                                ; preds = %dec_label_pc_a80d
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_a87c, label %dec_label_pc_a86b

dec_label_pc_a86b:                                ; preds = %dec_label_pc_a839
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_a88b

dec_label_pc_a87c:                                ; preds = %dec_label_pc_a839
  call void @printLine(ptr @global_var_80fe8)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_a88b

dec_label_pc_a88b:                                ; preds = %dec_label_pc_a87c, %dec_label_pc_a86b, %dec_label_pc_a80d
  %8 = load i32, ptr @global_var_b808c, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_a8a6, label %dec_label_pc_a895

dec_label_pc_a895:                                ; preds = %dec_label_pc_a88b
  call void @printLine(ptr @global_var_80ff8)
  br label %dec_label_pc_a8d8

dec_label_pc_a8a6:                                ; preds = %dec_label_pc_a88b
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  br i1 %10, label %dec_label_pc_a8d8, label %dec_label_pc_a8ac

dec_label_pc_a8ac:                                ; preds = %dec_label_pc_a8a6
  %11 = icmp sgt i32 %stack_var_-40.0.reload, 1073741822
  br i1 %11, label %dec_label_pc_a8c9, label %dec_label_pc_a8b5

dec_label_pc_a8b5:                                ; preds = %dec_label_pc_a8ac
  %12 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_a8d8

dec_label_pc_a8c9:                                ; preds = %dec_label_pc_a8ac
  call void @printLine(ptr @global_var_81010)
  br label %dec_label_pc_a8d8

dec_label_pc_a8d8:                                ; preds = %dec_label_pc_a8c9, %dec_label_pc_a8b5, %dec_label_pc_a8a6, %dec_label_pc_a895
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_a8ed, label %dec_label_pc_a8e8

dec_label_pc_a8e8:                                ; preds = %dec_label_pc_a8d8
  call void @__stack_chk_fail()
  br label %dec_label_pc_a8ed

dec_label_pc_a8ed:                                ; preds = %dec_label_pc_a8e8, %dec_label_pc_a8d8
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

