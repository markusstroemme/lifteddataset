@global_var_82b50 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_125ae:
  %storemerge4.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge4.reg2mem, align 4
  br i1 %1, label %dec_label_pc_12603, label %dec_label_pc_125cc

dec_label_pc_125cc:                               ; preds = %dec_label_pc_125ae
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = call i32 @rand()
  %8 = sext i1 %4 to i32
  %storemerge = xor i32 %7, %8
  %sext = mul i32 %storemerge, 16777216
  %9 = ashr exact i32 %sext, 24
  store i32 %9, ptr %storemerge4.reg2mem, align 4
  br label %dec_label_pc_12603

dec_label_pc_12603:                               ; preds = %dec_label_pc_125ae, %dec_label_pc_125cc
  %storemerge4.reload = load i32, ptr %storemerge4.reg2mem, align 4
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_1262f, label %dec_label_pc_12611

dec_label_pc_12611:                               ; preds = %dec_label_pc_12603
  %12 = mul i32 %storemerge4.reload, 16777216
  %sext2 = add i32 %12, 16777216
  %13 = udiv i32 %sext2, 16777216
  %14 = trunc i32 %13 to i8
  call void @printHexCharLine(i8 %14)
  br label %dec_label_pc_12662

dec_label_pc_1262f:                               ; preds = %dec_label_pc_12603
  %15 = trunc i32 %storemerge4.reload to i8
  %16 = icmp eq i8 %15, 127
  br i1 %16, label %dec_label_pc_12653, label %dec_label_pc_12635

dec_label_pc_12635:                               ; preds = %dec_label_pc_1262f
  %17 = mul i32 %storemerge4.reload, 16777216
  %sext3 = add i32 %17, 16777216
  %18 = udiv i32 %sext3, 16777216
  %19 = trunc i32 %18 to i8
  call void @printHexCharLine(i8 %19)
  br label %dec_label_pc_12662

dec_label_pc_12653:                               ; preds = %dec_label_pc_1262f
  call void @printLine(ptr @global_var_82b50)
  br label %dec_label_pc_12662

dec_label_pc_12662:                               ; preds = %dec_label_pc_12653, %dec_label_pc_12635, %dec_label_pc_12611
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

