@global_var_70690 = external constant [21 x i8]
@global_var_706a8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a92c0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10606:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a9070, align 4
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1066d, label %dec_label_pc_10624

dec_label_pc_10624:                               ; preds = %dec_label_pc_10606
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_1066d

dec_label_pc_1066d:                               ; preds = %dec_label_pc_10624, %dec_label_pc_10606
  %13 = load i32, ptr @global_var_a92c0, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_10688, label %dec_label_pc_10677

dec_label_pc_10677:                               ; preds = %dec_label_pc_1066d
  call void @printLine(ptr @global_var_70690)
  br label %dec_label_pc_106ba

dec_label_pc_10688:                               ; preds = %dec_label_pc_1066d
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %15 = icmp slt i32 %stack_var_-32.0.reload, 1
  br i1 %15, label %dec_label_pc_106ba, label %dec_label_pc_1068e

dec_label_pc_1068e:                               ; preds = %dec_label_pc_10688
  %16 = icmp sgt i32 %stack_var_-32.0.reload, 1073741822
  br i1 %16, label %dec_label_pc_106ab, label %dec_label_pc_10697

dec_label_pc_10697:                               ; preds = %dec_label_pc_1068e
  %17 = mul i32 %stack_var_-32.0.reload, 2
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_106ba

dec_label_pc_106ab:                               ; preds = %dec_label_pc_1068e
  call void @printLine(ptr @global_var_706a8)
  br label %dec_label_pc_106ba

dec_label_pc_106ba:                               ; preds = %dec_label_pc_106ab, %dec_label_pc_10697, %dec_label_pc_10688, %dec_label_pc_10677
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

