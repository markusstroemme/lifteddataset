@global_var_81290 = external constant [16 x i8]
@global_var_812a0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_be8e:
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-44.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_bf19, label %dec_label_pc_bebe

dec_label_pc_bebe:                                ; preds = %dec_label_pc_be8e
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_bf01, label %dec_label_pc_bef0

dec_label_pc_bef0:                                ; preds = %dec_label_pc_bebe
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_bf19

dec_label_pc_bf01:                                ; preds = %dec_label_pc_bebe
  call void @printLine(ptr @global_var_81290)
  store i32 0, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_bf19

dec_label_pc_bf19:                                ; preds = %dec_label_pc_be8e, %dec_label_pc_bf01, %dec_label_pc_bef0
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %stack_var_-44.0.reload, 1
  br i1 %9, label %dec_label_pc_bf41, label %dec_label_pc_bf27

dec_label_pc_bf27:                                ; preds = %dec_label_pc_bf19
  br i1 %10, label %dec_label_pc_bf73, label %dec_label_pc_bf2d

dec_label_pc_bf2d:                                ; preds = %dec_label_pc_bf27
  %11 = mul i32 %stack_var_-44.0.reload, 2
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_bf73

dec_label_pc_bf41:                                ; preds = %dec_label_pc_bf19
  br i1 %10, label %dec_label_pc_bf73, label %dec_label_pc_bf47

dec_label_pc_bf47:                                ; preds = %dec_label_pc_bf41
  %12 = icmp sgt i32 %stack_var_-44.0.reload, 1073741822
  br i1 %12, label %dec_label_pc_bf64, label %dec_label_pc_bf50

dec_label_pc_bf50:                                ; preds = %dec_label_pc_bf47
  %13 = mul i32 %stack_var_-44.0.reload, 2
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_bf73

dec_label_pc_bf64:                                ; preds = %dec_label_pc_bf47
  call void @printLine(ptr @global_var_812a0)
  br label %dec_label_pc_bf73

dec_label_pc_bf73:                                ; preds = %dec_label_pc_bf64, %dec_label_pc_bf50, %dec_label_pc_bf41, %dec_label_pc_bf2d, %dec_label_pc_bf27
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_bf88, label %dec_label_pc_bf83

dec_label_pc_bf83:                                ; preds = %dec_label_pc_bf73
  call void @__stack_chk_fail()
  br label %dec_label_pc_bf88

dec_label_pc_bf88:                                ; preds = %dec_label_pc_bf83, %dec_label_pc_bf73
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6ecb9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

