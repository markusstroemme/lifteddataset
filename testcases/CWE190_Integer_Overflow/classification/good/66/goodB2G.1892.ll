@global_var_67480 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e48e:
  %stack_var_-42 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-42 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_e519, label %dec_label_pc_e514

dec_label_pc_e514:                                ; preds = %dec_label_pc_e48e
  call void @__stack_chk_fail()
  br label %dec_label_pc_e519

dec_label_pc_e519:                                ; preds = %dec_label_pc_e514, %dec_label_pc_e48e
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_e5b0:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = sub i16 0, %3
  %5 = icmp slt i16 %4, 0
  %6 = icmp eq i1 %5, false
  %.v = select i1 %6, i16 %4, i16 %3
  %7 = icmp ult i16 %.v, 182
  br i1 %7, label %dec_label_pc_e5de, label %dec_label_pc_e5fa

dec_label_pc_e5de:                                ; preds = %dec_label_pc_e5b0
  %8 = zext i16 %3 to i32
  %narrow = mul i32 %8, 65536
  %sext = mul i32 %narrow, %8
  %9 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_e609

dec_label_pc_e5fa:                                ; preds = %dec_label_pc_e5b0
  call void @printLine(ptr @global_var_67480)
  br label %dec_label_pc_e609

dec_label_pc_e609:                                ; preds = %dec_label_pc_e5fa, %dec_label_pc_e5de
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

