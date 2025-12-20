@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1b00f:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = ptrtoint ptr %stack_var_-24 to i64
  call void @anon0(i64 %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1b069, label %dec_label_pc_1b064

dec_label_pc_1b064:                               ; preds = %dec_label_pc_1b00f
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b069

dec_label_pc_1b069:                               ; preds = %dec_label_pc_1b064, %dec_label_pc_1b00f
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1b0dd:
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

