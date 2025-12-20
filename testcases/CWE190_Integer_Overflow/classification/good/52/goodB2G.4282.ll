@global_var_714c8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_185cc:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  call void @anon0(i32 %storemerge.in)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_18691:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_186f7:
  %data.off = add i32 %data, 46339
  %0 = icmp ugt i32 %data.off, 92678
  br i1 %0, label %dec_label_pc_18736, label %dec_label_pc_18721

dec_label_pc_18721:                               ; preds = %dec_label_pc_186f7
  %1 = mul i32 %data, %data
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_18746

dec_label_pc_18736:                               ; preds = %dec_label_pc_186f7
  call void @printLine(ptr @global_var_714c8)
  br label %dec_label_pc_18746

dec_label_pc_18746:                               ; preds = %dec_label_pc_18736, %dec_label_pc_18721
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

