@CWE476_NULL_Pointer_Dereference__long_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_15223:
  %0 = load ptr, ptr @CWE476_NULL_Pointer_Dereference__long_45_goodG2BData, align 8
  %1 = ptrtoint ptr %0 to i64
  call void @printLongLine(i64 %1)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1524c:
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %1 = ptrtoint ptr %data_-32 to i64
  store i64 %1, ptr @CWE476_NULL_Pointer_Dereference__long_45_goodG2BData, align 8
  call void @anon0()
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_152a1, label %dec_label_pc_1529c

dec_label_pc_1529c:                               ; preds = %dec_label_pc_1524c
  call void @__stack_chk_fail()
  br label %dec_label_pc_152a1

dec_label_pc_152a1:                               ; preds = %dec_label_pc_1529c, %dec_label_pc_1524c
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

