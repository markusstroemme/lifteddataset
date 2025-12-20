@global_var_670b0 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]
@global_var_9c088 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_c103:
  %0 = load i32, ptr @global_var_9c088, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_c15c, label %dec_label_pc_c11f

dec_label_pc_c11f:                                ; preds = %dec_label_pc_c103
  %2 = sub i16 0, %data
  %3 = icmp slt i16 %2, 0
  %4 = icmp eq i1 %3, false
  %.v = select i1 %4, i16 %2, i16 %data
  %5 = icmp ult i16 %.v, 182
  br i1 %5, label %dec_label_pc_c131, label %dec_label_pc_c14d

dec_label_pc_c131:                                ; preds = %dec_label_pc_c11f
  %6 = mul i16 %data, %data
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_c15c

dec_label_pc_c14d:                                ; preds = %dec_label_pc_c11f
  call void @printLine(ptr @global_var_670b0)
  br label %dec_label_pc_c15c

dec_label_pc_c15c:                                ; preds = %dec_label_pc_c14d, %dec_label_pc_c131, %dec_label_pc_c103
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_c15f:
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
  store i32 1, ptr @global_var_9c088, align 4
  %9 = trunc i32 %storemerge.in to i16
  call void @anon0(i16 %9)
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

