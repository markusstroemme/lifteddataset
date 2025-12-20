@global_var_6bd00 = external constant [21 x i8]
@global_var_6bd18 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2f5f9:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_2f664, label %dec_label_pc_2f61b

dec_label_pc_2f61b:                               ; preds = %dec_label_pc_2f5f9
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
  br label %dec_label_pc_2f664

dec_label_pc_2f664:                               ; preds = %dec_label_pc_2f61b, %dec_label_pc_2f5f9
  %13 = call i32 @globalReturnsFalse()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_2f683, label %dec_label_pc_2f672

dec_label_pc_2f672:                               ; preds = %dec_label_pc_2f664
  call void @printLine(ptr @global_var_6bd00)
  br label %dec_label_pc_2f6b5

dec_label_pc_2f683:                               ; preds = %dec_label_pc_2f664
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %15 = icmp eq i32 %stack_var_-32.0.reload, 0
  br i1 %15, label %dec_label_pc_2f6b5, label %dec_label_pc_2f689

dec_label_pc_2f689:                               ; preds = %dec_label_pc_2f683
  %16 = icmp ult i32 %stack_var_-32.0.reload, 2147483647
  br i1 %16, label %dec_label_pc_2f692, label %dec_label_pc_2f6a6

dec_label_pc_2f692:                               ; preds = %dec_label_pc_2f689
  %17 = mul i32 %stack_var_-32.0.reload, 2
  call void @printUnsignedLine(i32 %17)
  br label %dec_label_pc_2f6b5

dec_label_pc_2f6a6:                               ; preds = %dec_label_pc_2f689
  call void @printLine(ptr @global_var_6bd18)
  br label %dec_label_pc_2f6b5

dec_label_pc_2f6b5:                               ; preds = %dec_label_pc_2f6a6, %dec_label_pc_2f692, %dec_label_pc_2f683, %dec_label_pc_2f672
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_550e7:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_550f6:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

