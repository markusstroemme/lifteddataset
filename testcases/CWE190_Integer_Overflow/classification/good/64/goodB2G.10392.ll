@global_var_6b900 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2d279:
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
  %12 = bitcast ptr %stack_var_-36 to ptr
  call void @anon0(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_2d306, label %dec_label_pc_2d301

dec_label_pc_2d301:                               ; preds = %dec_label_pc_2d279
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d306

dec_label_pc_2d306:                               ; preds = %dec_label_pc_2d301, %dec_label_pc_2d279
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_2d399:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_2d3d5, label %dec_label_pc_2d3c0

dec_label_pc_2d3c0:                               ; preds = %dec_label_pc_2d399
  %4 = add i32 %2, 1
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_2d3e4

dec_label_pc_2d3d5:                               ; preds = %dec_label_pc_2d399
  call void @printLine(ptr @global_var_6b900)
  br label %dec_label_pc_2d3e4

dec_label_pc_2d3e4:                               ; preds = %dec_label_pc_2d3d5, %dec_label_pc_2d3c0
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

