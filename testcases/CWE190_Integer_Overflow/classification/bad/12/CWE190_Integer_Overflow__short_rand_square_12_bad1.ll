@global_var_66ee0 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b05b:
  %storemerge5.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge5.reg2mem, align 4
  br i1 %1, label %dec_label_pc_b0c4, label %dec_label_pc_b07c

dec_label_pc_b07c:                                ; preds = %dec_label_pc_b05b
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = call i32 @rand()
  %9 = xor i32 %8, %7
  %10 = sext i1 %4 to i32
  %storemerge.in = xor i32 %9, %10
  %sext = mul i32 %storemerge.in, 65536
  %11 = ashr exact i32 %sext, 16
  store i32 %11, ptr %storemerge5.reg2mem, align 4
  br label %dec_label_pc_b0c4

dec_label_pc_b0c4:                                ; preds = %dec_label_pc_b05b, %dec_label_pc_b07c
  %storemerge5.reload = load i32, ptr %storemerge5.reg2mem, align 4
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %dec_label_pc_b0ee, label %dec_label_pc_b0d2

dec_label_pc_b0d2:                                ; preds = %dec_label_pc_b0c4
  %14 = urem i32 %storemerge5.reload, 65536
  %narrow = mul i32 %storemerge5.reload, 65536
  %sext2 = mul i32 %narrow, %14
  %15 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_b12b

dec_label_pc_b0ee:                                ; preds = %dec_label_pc_b0c4
  %16 = trunc i32 %storemerge5.reload to i16
  %17 = sub i16 0, %16
  %18 = icmp slt i16 %17, 0
  %19 = icmp eq i1 %18, false
  %20 = zext i16 %17 to i32
  %21 = select i1 %19, i32 %20, i32 %storemerge5.reload
  %22 = trunc i32 %21 to i16
  %23 = icmp ult i16 %22, 182
  br i1 %23, label %dec_label_pc_b100, label %dec_label_pc_b11c

dec_label_pc_b100:                                ; preds = %dec_label_pc_b0ee
  %24 = urem i32 %storemerge5.reload, 65536
  %narrow3 = mul i32 %storemerge5.reload, 65536
  %sext4 = mul i32 %narrow3, %24
  %25 = ashr exact i32 %sext4, 16
  call void @printIntLine(i32 %25)
  br label %dec_label_pc_b12b

dec_label_pc_b11c:                                ; preds = %dec_label_pc_b0ee
  call void @printLine(ptr @global_var_66ee0)
  br label %dec_label_pc_b12b

dec_label_pc_b12b:                                ; preds = %dec_label_pc_b11c, %dec_label_pc_b100, %dec_label_pc_b0d2
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_55105:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

