@global_var_810b0 = external constant [16 x i8]
@global_var_810c0 = external constant [21 x i8]
@global_var_810d8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ae8f:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-40.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_af0e, label %dec_label_pc_aebc

dec_label_pc_aebc:                                ; preds = %dec_label_pc_ae8f
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_b8080, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_aeff, label %dec_label_pc_aeee

dec_label_pc_aeee:                                ; preds = %dec_label_pc_aebc
  %8 = call i32 @atoi(ptr nonnull %5)
  store i32 %8, ptr %stack_var_-40.0.ph.reg2mem, align 4
  br label %dec_label_pc_af0ethread-pre-split

dec_label_pc_aeff:                                ; preds = %dec_label_pc_aebc
  call void @printLine(ptr @global_var_810b0)
  store i32 0, ptr %stack_var_-40.0.ph.reg2mem, align 4
  br label %dec_label_pc_af0ethread-pre-split

dec_label_pc_af0ethread-pre-split:                ; preds = %dec_label_pc_aeee, %dec_label_pc_aeff
  %stack_var_-40.0.ph.reload = load i32, ptr %stack_var_-40.0.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_b8014, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-40.0.ph.reload, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_af0e

dec_label_pc_af0e:                                ; preds = %dec_label_pc_af0ethread-pre-split, %dec_label_pc_ae8f
  %.reload = load i32, ptr %.reg2mem, align 4
  %9 = icmp eq i32 %.reload, 5
  br i1 %9, label %dec_label_pc_af2a, label %dec_label_pc_af19

dec_label_pc_af19:                                ; preds = %dec_label_pc_af0e
  call void @printLine(ptr @global_var_810c0)
  br label %dec_label_pc_af5c

dec_label_pc_af2a:                                ; preds = %dec_label_pc_af0e
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  br i1 %10, label %dec_label_pc_af5c, label %dec_label_pc_af30

dec_label_pc_af30:                                ; preds = %dec_label_pc_af2a
  %11 = icmp sgt i32 %stack_var_-40.0.reload, 1073741822
  br i1 %11, label %dec_label_pc_af4d, label %dec_label_pc_af39

dec_label_pc_af39:                                ; preds = %dec_label_pc_af30
  %12 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_af5c

dec_label_pc_af4d:                                ; preds = %dec_label_pc_af30
  call void @printLine(ptr @global_var_810d8)
  br label %dec_label_pc_af5c

dec_label_pc_af5c:                                ; preds = %dec_label_pc_af4d, %dec_label_pc_af39, %dec_label_pc_af2a, %dec_label_pc_af19
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_af71, label %dec_label_pc_af6c

dec_label_pc_af6c:                                ; preds = %dec_label_pc_af5c
  call void @__stack_chk_fail()
  br label %dec_label_pc_af71

dec_label_pc_af71:                                ; preds = %dec_label_pc_af6c, %dec_label_pc_af5c
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

