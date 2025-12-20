@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3b30e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  store i32 1, ptr %2, align 4
  %3 = load ptr, ptr %stack_var_-24, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = add i64 %4, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  %7 = bitcast ptr %stack_var_-24 to ptr
  %8 = call i64 @anon1(ptr nonnull %7)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3b375, label %dec_label_pc_3b370

dec_label_pc_3b370:                               ; preds = %dec_label_pc_3b30e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3b375

dec_label_pc_3b375:                               ; preds = %dec_label_pc_3b370, %dec_label_pc_3b30e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3b43d:
  %0 = bitcast ptr %arg1 to ptr
  call void @printStructLine(ptr %0)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

