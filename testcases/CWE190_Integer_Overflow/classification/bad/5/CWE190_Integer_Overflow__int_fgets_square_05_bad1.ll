@global_var_81bc8 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_109e3:
  %stack_var_-40.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8018, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_10a7e, label %dec_label_pc_10a0f

dec_label_pc_10a0f:                               ; preds = %dec_label_pc_109e3
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_10a52, label %dec_label_pc_10a41

dec_label_pc_10a41:                               ; preds = %dec_label_pc_10a0f
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.ph.reg2mem, align 4
  br label %dec_label_pc_10a61

dec_label_pc_10a52:                               ; preds = %dec_label_pc_10a0f
  call void @printLine(ptr @global_var_81bc8)
  store i32 0, ptr %stack_var_-40.0.ph.reg2mem, align 4
  br label %dec_label_pc_10a61

dec_label_pc_10a61:                               ; preds = %dec_label_pc_10a52, %dec_label_pc_10a41
  %.pr = load i32, ptr @global_var_b8018, align 4
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %dec_label_pc_10a7e, label %dec_label_pc_10a6b

dec_label_pc_10a6b:                               ; preds = %dec_label_pc_10a61
  %stack_var_-40.0.ph.reload = load i32, ptr %stack_var_-40.0.ph.reg2mem, align 4
  %9 = mul i32 %stack_var_-40.0.ph.reload, %stack_var_-40.0.ph.reload
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_10a7e

dec_label_pc_10a7e:                               ; preds = %dec_label_pc_109e3, %dec_label_pc_10a6b, %dec_label_pc_10a61
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_10a93, label %dec_label_pc_10a8e

dec_label_pc_10a8e:                               ; preds = %dec_label_pc_10a7e
  call void @__stack_chk_fail()
  br label %dec_label_pc_10a93

dec_label_pc_10a93:                               ; preds = %dec_label_pc_10a8e, %dec_label_pc_10a7e
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

