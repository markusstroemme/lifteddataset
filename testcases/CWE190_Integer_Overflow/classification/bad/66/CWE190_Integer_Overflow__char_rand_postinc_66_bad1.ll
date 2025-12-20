@global_var_8ca93 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_152c7:
  %stack_var_-21 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-21 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1533f, label %dec_label_pc_1533a

dec_label_pc_1533a:                               ; preds = %dec_label_pc_152c7
  call void @__stack_chk_fail()
  br label %dec_label_pc_1533f

dec_label_pc_1533f:                               ; preds = %dec_label_pc_1533a, %dec_label_pc_152c7
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_15427:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 2
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, 1
  call void @printHexCharLine(i8 %4)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

