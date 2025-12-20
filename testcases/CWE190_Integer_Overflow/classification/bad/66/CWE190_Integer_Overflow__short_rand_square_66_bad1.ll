@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e3ab:
  %stack_var_-42 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-42 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_e436, label %dec_label_pc_e431

dec_label_pc_e431:                                ; preds = %dec_label_pc_e3ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_e436

dec_label_pc_e436:                                ; preds = %dec_label_pc_e431, %dec_label_pc_e3ab
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_e53e:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = mul i16 %3, %3
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
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

declare i64 @__readfsqword(i64) local_unnamed_addr

