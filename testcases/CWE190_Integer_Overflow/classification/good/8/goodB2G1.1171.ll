@global_var_81110 = external constant [16 x i8]
@global_var_81120 = external constant [21 x i8]
@global_var_81138 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_b120:
  ret i32 1
}

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_b12f:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_b1fd:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_b27f, label %dec_label_pc_b22d

dec_label_pc_b22d:                                ; preds = %dec_label_pc_b1fd
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_b270, label %dec_label_pc_b25f

dec_label_pc_b25f:                                ; preds = %dec_label_pc_b22d
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_b27f

dec_label_pc_b270:                                ; preds = %dec_label_pc_b22d
  call void @printLine(ptr @global_var_81110)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_b27f

dec_label_pc_b27f:                                ; preds = %dec_label_pc_b270, %dec_label_pc_b25f, %dec_label_pc_b1fd
  %8 = call i32 @staticReturnsFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_b29e, label %dec_label_pc_b28d

dec_label_pc_b28d:                                ; preds = %dec_label_pc_b27f
  call void @printLine(ptr @global_var_81120)
  br label %dec_label_pc_b2d0

dec_label_pc_b29e:                                ; preds = %dec_label_pc_b27f
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  br i1 %10, label %dec_label_pc_b2d0, label %dec_label_pc_b2a4

dec_label_pc_b2a4:                                ; preds = %dec_label_pc_b29e
  %11 = icmp sgt i32 %stack_var_-40.0.reload, 1073741822
  br i1 %11, label %dec_label_pc_b2c1, label %dec_label_pc_b2ad

dec_label_pc_b2ad:                                ; preds = %dec_label_pc_b2a4
  %12 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_b2d0

dec_label_pc_b2c1:                                ; preds = %dec_label_pc_b2a4
  call void @printLine(ptr @global_var_81138)
  br label %dec_label_pc_b2d0

dec_label_pc_b2d0:                                ; preds = %dec_label_pc_b2c1, %dec_label_pc_b2ad, %dec_label_pc_b29e, %dec_label_pc_b28d
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_b2e5, label %dec_label_pc_b2e0

dec_label_pc_b2e0:                                ; preds = %dec_label_pc_b2d0
  call void @__stack_chk_fail()
  br label %dec_label_pc_b2e5

dec_label_pc_b2e5:                                ; preds = %dec_label_pc_b2e0, %dec_label_pc_b2d0
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

