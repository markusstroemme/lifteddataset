@global_var_705a0 = external constant [21 x i8]
@global_var_705b8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a901c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_fd57:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a901c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_fdbf, label %dec_label_pc_fd76

dec_label_pc_fd76:                                ; preds = %dec_label_pc_fd57
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge.in = xor i32 %12, %13
  %.pr = load i32, ptr @global_var_a901c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_fdbf

dec_label_pc_fdbf:                                ; preds = %dec_label_pc_fd76, %dec_label_pc_fd57
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  br i1 %14, label %dec_label_pc_fddb, label %dec_label_pc_fdca

dec_label_pc_fdca:                                ; preds = %dec_label_pc_fdbf
  call void @printLine(ptr @global_var_705a0)
  br label %dec_label_pc_fe0d

dec_label_pc_fddb:                                ; preds = %dec_label_pc_fdbf
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %15 = icmp slt i32 %stack_var_-32.0.reload, 1
  br i1 %15, label %dec_label_pc_fe0d, label %dec_label_pc_fde1

dec_label_pc_fde1:                                ; preds = %dec_label_pc_fddb
  %16 = icmp sgt i32 %stack_var_-32.0.reload, 1073741822
  br i1 %16, label %dec_label_pc_fdfe, label %dec_label_pc_fdea

dec_label_pc_fdea:                                ; preds = %dec_label_pc_fde1
  %17 = mul i32 %stack_var_-32.0.reload, 2
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_fe0d

dec_label_pc_fdfe:                                ; preds = %dec_label_pc_fde1
  call void @printLine(ptr @global_var_705b8)
  br label %dec_label_pc_fe0d

dec_label_pc_fe0d:                                ; preds = %dec_label_pc_fdfe, %dec_label_pc_fdea, %dec_label_pc_fddb, %dec_label_pc_fdca
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

