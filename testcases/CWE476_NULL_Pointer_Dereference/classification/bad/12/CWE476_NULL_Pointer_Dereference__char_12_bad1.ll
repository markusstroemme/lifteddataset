@global_var_47aef = external constant [13 x i8]
@global_var_4a58f = external constant [6 x i8]
@global_var_47aea = external constant i8

define void @anon0() local_unnamed_addr {
dec_label_pc_86a9:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i8 ptrtoint (ptr @global_var_47aea to i8), i8 0
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_86f9, label %dec_label_pc_86e6

dec_label_pc_86e6:                                ; preds = %dec_label_pc_86a9
  %4 = sext i8 %. to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = load i8, ptr %5, align 1
  call void @printHexCharLine(i8 %6)
  br label %dec_label_pc_8722

dec_label_pc_86f9:                                ; preds = %dec_label_pc_86a9
  %not. = icmp ne i1 %1, true
  %constexpr = icmp eq i8 ptrtoint (ptr @global_var_47aea to i8), 0
  %7 = or i1 %not., %constexpr
  br i1 %7, label %dec_label_pc_8713, label %dec_label_pc_8700

dec_label_pc_8700:                                ; preds = %dec_label_pc_86f9
  %8 = sext i8 %. to i64
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  call void @printHexCharLine(i8 %10)
  br label %dec_label_pc_8722

dec_label_pc_8713:                                ; preds = %dec_label_pc_86f9
  call void @printLine(ptr @global_var_47aef)
  br label %dec_label_pc_8722

dec_label_pc_8722:                                ; preds = %dec_label_pc_8713, %dec_label_pc_8700, %dec_label_pc_86e6
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3cca9:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a58f, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

