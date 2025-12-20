@global_var_47ccf = external constant [13 x i8]
@global_var_4a58f = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_a5bb:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_a607, label %dec_label_pc_a602

dec_label_pc_a602:                                ; preds = %dec_label_pc_a5bb
  call void @__stack_chk_fail()
  br label %dec_label_pc_a607

dec_label_pc_a607:                                ; preds = %dec_label_pc_a602, %dec_label_pc_a5bb
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_a688:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_a6be, label %dec_label_pc_a6ab

dec_label_pc_a6ab:                                ; preds = %dec_label_pc_a688
  %5 = inttoptr i64 %3 to ptr
  %6 = load i8, ptr %5, align 1
  call void @printHexCharLine(i8 %6)
  br label %dec_label_pc_a6cd

dec_label_pc_a6be:                                ; preds = %dec_label_pc_a688
  call void @printLine(ptr @global_var_47ccf)
  br label %dec_label_pc_a6cd

dec_label_pc_a6cd:                                ; preds = %dec_label_pc_a6be, %dec_label_pc_a6ab
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

