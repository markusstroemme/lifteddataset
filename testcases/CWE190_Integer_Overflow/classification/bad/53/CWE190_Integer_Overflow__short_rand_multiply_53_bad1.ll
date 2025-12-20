@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3ded9:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = mul i32 %4, 32768
  %6 = call i32 @rand()
  %7 = xor i32 %6, %5
  %8 = sext i1 %2 to i32
  %storemerge.in = xor i32 %7, %8
  %9 = trunc i32 %storemerge.in to i16
  call void @anon1(i16 %9)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_3dfe8:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_3e048:
  call void @anon3(i16 %data)
  ret void
}

define void @anon3(i16 %data) local_unnamed_addr {
dec_label_pc_3e0a8:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_3e0d6, label %dec_label_pc_3e0c1

dec_label_pc_3e0c1:                               ; preds = %dec_label_pc_3e0a8
  %1 = mul i16 %data, 2
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_3e0d6

dec_label_pc_3e0d6:                               ; preds = %dec_label_pc_3e0c1, %dec_label_pc_3e0a8
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

