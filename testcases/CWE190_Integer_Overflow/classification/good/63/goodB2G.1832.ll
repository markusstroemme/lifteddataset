@global_var_673d8 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_ddf7:
  %stack_var_-34 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge.in = xor i32 %8, %9
  %10 = trunc i32 %storemerge.in to i16
  store i16 %10, ptr %stack_var_-34, align 2
  call void @anon0(ptr nonnull %stack_var_-34)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_de7a, label %dec_label_pc_de75

dec_label_pc_de75:                                ; preds = %dec_label_pc_ddf7
  call void @__stack_chk_fail()
  br label %dec_label_pc_de7a

dec_label_pc_de7a:                                ; preds = %dec_label_pc_de75, %dec_label_pc_ddf7
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_df0f:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = sub i16 0, %2
  %4 = icmp slt i16 %3, 0
  %5 = icmp eq i1 %4, false
  %.v = select i1 %5, i16 %3, i16 %2
  %6 = icmp ult i16 %.v, 182
  br i1 %6, label %dec_label_pc_df3c, label %dec_label_pc_df58

dec_label_pc_df3c:                                ; preds = %dec_label_pc_df0f
  %7 = trunc i64 %1 to i32
  %8 = urem i32 %7, 65536
  %narrow = mul i32 %8, 65536
  %sext = mul i32 %narrow, %8
  %9 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_df67

dec_label_pc_df58:                                ; preds = %dec_label_pc_df0f
  call void @printLine(ptr @global_var_673d8)
  br label %dec_label_pc_df67

dec_label_pc_df67:                                ; preds = %dec_label_pc_df58, %dec_label_pc_df3c
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

