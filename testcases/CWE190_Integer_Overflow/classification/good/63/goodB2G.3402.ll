@global_var_83048 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_14da4:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = sext i1 %3 to i32
  %storemerge.in = xor i32 %6, %7
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %stack_var_-17, align 1
  call void @anon0(ptr nonnull %stack_var_-17)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_14e15, label %dec_label_pc_14e10

dec_label_pc_14e10:                               ; preds = %dec_label_pc_14da4
  call void @__stack_chk_fail()
  br label %dec_label_pc_14e15

dec_label_pc_14e15:                               ; preds = %dec_label_pc_14e10, %dec_label_pc_14da4
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_14ea8:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp eq i8 %2, 127
  br i1 %3, label %dec_label_pc_14ee6, label %dec_label_pc_14ec8

dec_label_pc_14ec8:                               ; preds = %dec_label_pc_14ea8
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 16777216
  %sext = add i32 %5, 16777216
  %6 = udiv i32 %sext, 16777216
  %7 = trunc i32 %6 to i8
  call void @printHexCharLine(i8 %7)
  br label %dec_label_pc_14ef5

dec_label_pc_14ee6:                               ; preds = %dec_label_pc_14ea8
  call void @printLine(ptr @global_var_83048)
  br label %dec_label_pc_14ef5

dec_label_pc_14ef5:                               ; preds = %dec_label_pc_14ee6, %dec_label_pc_14ec8
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

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

