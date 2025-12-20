@global_var_6cbc8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_37ada:
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  store i32 %storemerge.in, ptr %stack_var_-36, align 4
  call void @anon0(ptr nonnull %stack_var_-36)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_37b67, label %dec_label_pc_37b62

dec_label_pc_37b62:                               ; preds = %dec_label_pc_37ada
  call void @__stack_chk_fail()
  br label %dec_label_pc_37b67

dec_label_pc_37b67:                               ; preds = %dec_label_pc_37b62, %dec_label_pc_37ada
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_37bea:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %.off = add i32 %2, 65534
  %3 = icmp ugt i32 %.off, 131068
  br i1 %3, label %dec_label_pc_37c2c, label %dec_label_pc_37c17

dec_label_pc_37c17:                               ; preds = %dec_label_pc_37bea
  %4 = mul i32 %2, %2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_37c3c

dec_label_pc_37c2c:                               ; preds = %dec_label_pc_37bea
  call void @printLine(ptr @global_var_6cbc8)
  br label %dec_label_pc_37c3c

dec_label_pc_37c3c:                               ; preds = %dec_label_pc_37c2c, %dec_label_pc_37c17
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

