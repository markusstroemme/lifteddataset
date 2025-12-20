@global_var_81230 = external constant [16 x i8]
@global_var_81240 = external constant [21 x i8]
@global_var_81258 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_bbe5:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_bc67, label %dec_label_pc_bc15

dec_label_pc_bc15:                                ; preds = %dec_label_pc_bbe5
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_bc58, label %dec_label_pc_bc47

dec_label_pc_bc47:                                ; preds = %dec_label_pc_bc15
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_bc67

dec_label_pc_bc58:                                ; preds = %dec_label_pc_bc15
  call void @printLine(ptr @global_var_81230)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_bc67

dec_label_pc_bc67:                                ; preds = %dec_label_pc_bc58, %dec_label_pc_bc47, %dec_label_pc_bbe5
  %8 = call i32 @globalReturnsFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_bc86, label %dec_label_pc_bc75

dec_label_pc_bc75:                                ; preds = %dec_label_pc_bc67
  call void @printLine(ptr @global_var_81240)
  br label %dec_label_pc_bcb8

dec_label_pc_bc86:                                ; preds = %dec_label_pc_bc67
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  br i1 %10, label %dec_label_pc_bcb8, label %dec_label_pc_bc8c

dec_label_pc_bc8c:                                ; preds = %dec_label_pc_bc86
  %11 = icmp sgt i32 %stack_var_-40.0.reload, 1073741822
  br i1 %11, label %dec_label_pc_bca9, label %dec_label_pc_bc95

dec_label_pc_bc95:                                ; preds = %dec_label_pc_bc8c
  %12 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_bcb8

dec_label_pc_bca9:                                ; preds = %dec_label_pc_bc8c
  call void @printLine(ptr @global_var_81258)
  br label %dec_label_pc_bcb8

dec_label_pc_bcb8:                                ; preds = %dec_label_pc_bca9, %dec_label_pc_bc95, %dec_label_pc_bc86, %dec_label_pc_bc75
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_bccd, label %dec_label_pc_bcc8

dec_label_pc_bcc8:                                ; preds = %dec_label_pc_bcb8
  call void @__stack_chk_fail()
  br label %dec_label_pc_bccd

dec_label_pc_bccd:                                ; preds = %dec_label_pc_bcc8, %dec_label_pc_bcb8
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6ecaa:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

