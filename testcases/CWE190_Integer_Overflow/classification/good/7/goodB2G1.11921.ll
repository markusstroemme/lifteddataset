@staticFive = external local_unnamed_addr global i32
@global_var_6c540 = external constant [21 x i8]
@global_var_6c558 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_34005:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @staticFive, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3406d, label %dec_label_pc_34024

dec_label_pc_34024:                               ; preds = %dec_label_pc_34005
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
  %.pr = load i32, ptr @staticFive, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_3406d

dec_label_pc_3406d:                               ; preds = %dec_label_pc_34024, %dec_label_pc_34005
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  br i1 %14, label %dec_label_pc_34089, label %dec_label_pc_34078

dec_label_pc_34078:                               ; preds = %dec_label_pc_3406d
  call void @printLine(ptr @global_var_6c540)
  br label %dec_label_pc_340c2

dec_label_pc_34089:                               ; preds = %dec_label_pc_3406d
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %stack_var_-32.0.off = add i32 %stack_var_-32.0.reload, 65534
  %15 = icmp ugt i32 %stack_var_-32.0.off, 131068
  br i1 %15, label %dec_label_pc_340b3, label %dec_label_pc_3409d

dec_label_pc_3409d:                               ; preds = %dec_label_pc_34089
  %16 = mul i32 %stack_var_-32.0.reload, %stack_var_-32.0.reload
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_340c2

dec_label_pc_340b3:                               ; preds = %dec_label_pc_34089
  call void @printLine(ptr @global_var_6c558)
  br label %dec_label_pc_340c2

dec_label_pc_340c2:                               ; preds = %dec_label_pc_340b3, %dec_label_pc_3409d, %dec_label_pc_34078
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

