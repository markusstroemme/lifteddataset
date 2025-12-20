@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2a81e:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  call void @anon1(ptr nonnull %stack_var_-72)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_2a904, label %dec_label_pc_2a8ff

dec_label_pc_2a8ff:                               ; preds = %dec_label_pc_2a81e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a904

dec_label_pc_2a904:                               ; preds = %dec_label_pc_2a8ff, %dec_label_pc_2a81e
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2aa6b:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_2aaa5, label %dec_label_pc_2aa8e

dec_label_pc_2aa8e:                               ; preds = %dec_label_pc_2aa6b
  %5 = mul i64 %3, 2
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_2aaa5

dec_label_pc_2aaa5:                               ; preds = %dec_label_pc_2aa8e, %dec_label_pc_2aa6b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

