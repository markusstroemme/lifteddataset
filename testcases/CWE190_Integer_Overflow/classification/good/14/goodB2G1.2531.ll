@global_var_707b8 = external constant [21 x i8]
@global_var_707d0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_11134:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a9074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1119c, label %dec_label_pc_11153

dec_label_pc_11153:                               ; preds = %dec_label_pc_11134
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
  %.pr = load i32, ptr @global_var_a9074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_1119c

dec_label_pc_1119c:                               ; preds = %dec_label_pc_11153, %dec_label_pc_11134
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  br i1 %14, label %dec_label_pc_111b8, label %dec_label_pc_111a7

dec_label_pc_111a7:                               ; preds = %dec_label_pc_1119c
  call void @printLine(ptr @global_var_707b8)
  br label %dec_label_pc_111ea

dec_label_pc_111b8:                               ; preds = %dec_label_pc_1119c
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %15 = icmp slt i32 %stack_var_-32.0.reload, 1
  br i1 %15, label %dec_label_pc_111ea, label %dec_label_pc_111be

dec_label_pc_111be:                               ; preds = %dec_label_pc_111b8
  %16 = icmp sgt i32 %stack_var_-32.0.reload, 1073741822
  br i1 %16, label %dec_label_pc_111db, label %dec_label_pc_111c7

dec_label_pc_111c7:                               ; preds = %dec_label_pc_111be
  %17 = mul i32 %stack_var_-32.0.reload, 2
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_111ea

dec_label_pc_111db:                               ; preds = %dec_label_pc_111be
  call void @printLine(ptr @global_var_707d0)
  br label %dec_label_pc_111ea

dec_label_pc_111ea:                               ; preds = %dec_label_pc_111db, %dec_label_pc_111c7, %dec_label_pc_111b8, %dec_label_pc_111a7
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

