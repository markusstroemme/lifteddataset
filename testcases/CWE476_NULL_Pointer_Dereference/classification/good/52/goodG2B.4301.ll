@global_var_4a578 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_11ab9:
  %stack_var_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 5, ptr %stack_var_-28, align 4
  call void @anon0(ptr nonnull %stack_var_-28)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_11b04, label %dec_label_pc_11aff

dec_label_pc_11aff:                               ; preds = %dec_label_pc_11ab9
  call void @__stack_chk_fail()
  br label %dec_label_pc_11b04

dec_label_pc_11b04:                               ; preds = %dec_label_pc_11aff, %dec_label_pc_11ab9
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_11b67:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_11bc5:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
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

