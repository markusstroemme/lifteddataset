@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5be47:
  %stack_var_-424 = alloca i64, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5be81, label %dec_label_pc_5be73

dec_label_pc_5be73:                               ; preds = %dec_label_pc_5be47
  %3 = ptrtoint ptr %stack_var_-824 to i64
  %4 = trunc i64 %3 to i32
  %5 = insertvalue [100 x i32] undef, i32 %4, 0
  store [100 x i32] %5, ptr %dataGoodBuffer_-832, align 8
  br label %dec_label_pc_5be81

dec_label_pc_5be81:                               ; preds = %dec_label_pc_5be73, %dec_label_pc_5be47
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = inttoptr i64 %8 to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-424, i32 400)
  %11 = inttoptr i64 %8 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_5bedb, label %dec_label_pc_5bed6

dec_label_pc_5bed6:                               ; preds = %dec_label_pc_5be81
  call void @__stack_chk_fail()
  br label %dec_label_pc_5bedb

dec_label_pc_5bedb:                               ; preds = %dec_label_pc_5bed6, %dec_label_pc_5be81
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_9d02b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

