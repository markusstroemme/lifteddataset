@global_var_67330 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_d681:
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
  call void @anon0(i16 %9)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_d745:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_d7a5:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_d823:
  %0 = sub i16 0, %data
  %1 = icmp slt i16 %0, 0
  %2 = icmp eq i1 %1, false
  %.v = select i1 %2, i16 %0, i16 %data
  %3 = icmp ult i16 %.v, 182
  br i1 %3, label %dec_label_pc_d847, label %dec_label_pc_d863

dec_label_pc_d847:                                ; preds = %dec_label_pc_d823
  %4 = mul i16 %data, %data
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_d872

dec_label_pc_d863:                                ; preds = %dec_label_pc_d823
  call void @printLine(ptr @global_var_67330)
  br label %dec_label_pc_d872

dec_label_pc_d872:                                ; preds = %dec_label_pc_d863, %dec_label_pc_d847
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

