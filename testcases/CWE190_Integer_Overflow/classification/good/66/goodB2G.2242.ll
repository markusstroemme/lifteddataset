@global_var_82770 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_10907:
  %stack_var_-21 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-21 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_10952, label %dec_label_pc_1094d

dec_label_pc_1094d:                               ; preds = %dec_label_pc_10907
  call void @__stack_chk_fail()
  br label %dec_label_pc_10952

dec_label_pc_10952:                               ; preds = %dec_label_pc_1094d, %dec_label_pc_10907
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_109e7:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 2
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 127
  br i1 %4, label %dec_label_pc_10a26, label %dec_label_pc_10a08

dec_label_pc_10a08:                               ; preds = %dec_label_pc_109e7
  %5 = zext i8 %3 to i32
  %6 = mul i32 %5, 16777216
  %sext = add i32 %6, 16777216
  %7 = udiv i32 %sext, 16777216
  %8 = trunc i32 %7 to i8
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_10a35

dec_label_pc_10a26:                               ; preds = %dec_label_pc_109e7
  call void @printLine(ptr @global_var_82770)
  br label %dec_label_pc_10a35

dec_label_pc_10a35:                               ; preds = %dec_label_pc_10a26, %dec_label_pc_10a08
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

declare i64 @__readfsqword(i64) local_unnamed_addr

