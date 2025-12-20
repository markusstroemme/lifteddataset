@global_var_811d0 = external constant [16 x i8]
@global_var_811e0 = external constant [21 x i8]
@global_var_811f8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8070 = external local_unnamed_addr global i32
@global_var_b8320 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b89d:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8070, align 4
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_b91b, label %dec_label_pc_b8c9

dec_label_pc_b8c9:                                ; preds = %dec_label_pc_b89d
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_b90c, label %dec_label_pc_b8fb

dec_label_pc_b8fb:                                ; preds = %dec_label_pc_b8c9
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_b91b

dec_label_pc_b90c:                                ; preds = %dec_label_pc_b8c9
  call void @printLine(ptr @global_var_811d0)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_b91b

dec_label_pc_b91b:                                ; preds = %dec_label_pc_b90c, %dec_label_pc_b8fb, %dec_label_pc_b89d
  %8 = load i32, ptr @global_var_b8320, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_b936, label %dec_label_pc_b925

dec_label_pc_b925:                                ; preds = %dec_label_pc_b91b
  call void @printLine(ptr @global_var_811e0)
  br label %dec_label_pc_b968

dec_label_pc_b936:                                ; preds = %dec_label_pc_b91b
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  br i1 %10, label %dec_label_pc_b968, label %dec_label_pc_b93c

dec_label_pc_b93c:                                ; preds = %dec_label_pc_b936
  %11 = icmp sgt i32 %stack_var_-40.0.reload, 1073741822
  br i1 %11, label %dec_label_pc_b959, label %dec_label_pc_b945

dec_label_pc_b945:                                ; preds = %dec_label_pc_b93c
  %12 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_b968

dec_label_pc_b959:                                ; preds = %dec_label_pc_b93c
  call void @printLine(ptr @global_var_811f8)
  br label %dec_label_pc_b968

dec_label_pc_b968:                                ; preds = %dec_label_pc_b959, %dec_label_pc_b945, %dec_label_pc_b936, %dec_label_pc_b925
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_b97d, label %dec_label_pc_b978

dec_label_pc_b978:                                ; preds = %dec_label_pc_b968
  call void @__stack_chk_fail()
  br label %dec_label_pc_b97d

dec_label_pc_b97d:                                ; preds = %dec_label_pc_b978, %dec_label_pc_b968
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

