@CWE476_NULL_Pointer_Dereference__struct_68_goodG2BData = external local_unnamed_addr global ptr
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1b171:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %1, ptr @CWE476_NULL_Pointer_Dereference__struct_68_goodG2BData, align 8
  call void @anon0()
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1b1cc, label %dec_label_pc_1b1c7

dec_label_pc_1b1c7:                               ; preds = %dec_label_pc_1b171
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b1cc

dec_label_pc_1b1cc:                               ; preds = %dec_label_pc_1b1c7, %dec_label_pc_1b171
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1b240:
  %0 = load i32, ptr @CWE476_NULL_Pointer_Dereference__struct_68_goodG2BData, align 8
  call void @printIntLine(i32 %0)
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

