@CWE476_NULL_Pointer_Dereference__struct_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_19996:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  store i32 1, ptr @CWE476_NULL_Pointer_Dereference__struct_22_goodG2BGlobal, align 4
  call void @anon0(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_199f2, label %dec_label_pc_199ed

dec_label_pc_199ed:                               ; preds = %dec_label_pc_19996
  call void @__stack_chk_fail()
  br label %dec_label_pc_199f2

dec_label_pc_199f2:                               ; preds = %dec_label_pc_199ed, %dec_label_pc_19996
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_19adc:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @CWE476_NULL_Pointer_Dereference__struct_22_goodG2BGlobal, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_19b03, label %dec_label_pc_19af6

dec_label_pc_19af6:                               ; preds = %dec_label_pc_19adc
  %4 = trunc i64 %1 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_19b03

dec_label_pc_19b03:                               ; preds = %dec_label_pc_19af6, %dec_label_pc_19adc
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

