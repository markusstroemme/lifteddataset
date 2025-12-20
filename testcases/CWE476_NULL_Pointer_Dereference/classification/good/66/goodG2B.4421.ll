@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_12518:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1256b, label %dec_label_pc_12566

dec_label_pc_12566:                               ; preds = %dec_label_pc_12518
  call void @__stack_chk_fail()
  br label %dec_label_pc_1256b

dec_label_pc_1256b:                               ; preds = %dec_label_pc_12566, %dec_label_pc_12518
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_12606:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  call void @printIntLine(i32 %5)
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

declare i64 @__readfsqword(i64) local_unnamed_addr

