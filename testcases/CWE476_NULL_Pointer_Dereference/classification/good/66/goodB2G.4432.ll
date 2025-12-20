@global_var_48492 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1256d:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_125b9, label %dec_label_pc_125b4

dec_label_pc_125b4:                               ; preds = %dec_label_pc_1256d
  call void @__stack_chk_fail()
  br label %dec_label_pc_125b9

dec_label_pc_125b9:                               ; preds = %dec_label_pc_125b4, %dec_label_pc_1256d
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_12632:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_12664, label %dec_label_pc_12655

dec_label_pc_12655:                               ; preds = %dec_label_pc_12632
  %5 = inttoptr i64 %3 to ptr
  %6 = load i32, ptr %5, align 4
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_12673

dec_label_pc_12664:                               ; preds = %dec_label_pc_12632
  call void @printLine(ptr @global_var_48492)
  br label %dec_label_pc_12673

dec_label_pc_12673:                               ; preds = %dec_label_pc_12664, %dec_label_pc_12655
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

