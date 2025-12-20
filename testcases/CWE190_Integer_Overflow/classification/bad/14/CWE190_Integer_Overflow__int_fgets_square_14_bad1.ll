@global_var_81f18 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_127d8:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_12857, label %dec_label_pc_12805

dec_label_pc_12805:                               ; preds = %dec_label_pc_127d8
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_b8080, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_12848, label %dec_label_pc_12837

dec_label_pc_12837:                               ; preds = %dec_label_pc_12805
  %8 = call i32 @atoi(ptr nonnull %5)
  store i32 %8, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_12857

dec_label_pc_12848:                               ; preds = %dec_label_pc_12805
  call void @printLine(ptr @global_var_81f18)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_12857

dec_label_pc_12857:                               ; preds = %dec_label_pc_12848, %dec_label_pc_12837, %dec_label_pc_127d8
  %9 = load i32, ptr @global_var_b8074, align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_12875, label %dec_label_pc_12862

dec_label_pc_12862:                               ; preds = %dec_label_pc_12857
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %12 = mul i32 %stack_var_-40.0.reload, %stack_var_-40.0.reload
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_12875

dec_label_pc_12875:                               ; preds = %dec_label_pc_12862, %dec_label_pc_12857
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1288a, label %dec_label_pc_12885

dec_label_pc_12885:                               ; preds = %dec_label_pc_12875
  call void @__stack_chk_fail()
  br label %dec_label_pc_1288a

dec_label_pc_1288a:                               ; preds = %dec_label_pc_12885, %dec_label_pc_12875
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

