@global_var_81230 = external constant [16 x i8]
@global_var_81258 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_bccf:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_bd51, label %dec_label_pc_bcff

dec_label_pc_bcff:                                ; preds = %dec_label_pc_bccf
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_bd42, label %dec_label_pc_bd31

dec_label_pc_bd31:                                ; preds = %dec_label_pc_bcff
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_bd51

dec_label_pc_bd42:                                ; preds = %dec_label_pc_bcff
  call void @printLine(ptr @global_var_81230)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_bd51

dec_label_pc_bd51:                                ; preds = %dec_label_pc_bd42, %dec_label_pc_bd31, %dec_label_pc_bccf
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %8 = call i32 @globalReturnsTrue()
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  %or.cond = or i1 %10, %9
  br i1 %or.cond, label %dec_label_pc_bd91, label %dec_label_pc_bd65

dec_label_pc_bd65:                                ; preds = %dec_label_pc_bd51
  %11 = icmp sgt i32 %stack_var_-40.0.reload, 1073741822
  br i1 %11, label %dec_label_pc_bd82, label %dec_label_pc_bd6e

dec_label_pc_bd6e:                                ; preds = %dec_label_pc_bd65
  %12 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_bd91

dec_label_pc_bd82:                                ; preds = %dec_label_pc_bd65
  call void @printLine(ptr @global_var_81258)
  br label %dec_label_pc_bd91

dec_label_pc_bd91:                                ; preds = %dec_label_pc_bd82, %dec_label_pc_bd6e, %dec_label_pc_bd51
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_bda6, label %dec_label_pc_bda1

dec_label_pc_bda1:                                ; preds = %dec_label_pc_bd91
  call void @__stack_chk_fail()
  br label %dec_label_pc_bda6

dec_label_pc_bda6:                                ; preds = %dec_label_pc_bda1, %dec_label_pc_bd91
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6ec9b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

