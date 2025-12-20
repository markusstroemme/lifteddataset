@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2c9f0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load ptr, ptr %stack_var_-24, align 8
  call void @printStructLine(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2ca40, label %dec_label_pc_2ca3b

dec_label_pc_2ca3b:                               ; preds = %dec_label_pc_2c9f0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2ca40

dec_label_pc_2ca40:                               ; preds = %dec_label_pc_2ca3b, %dec_label_pc_2c9f0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_2cb26:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2cb54

dec_label_pc_2cb54:                               ; preds = %dec_label_pc_2cb54, %dec_label_pc_2cb26
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %2 = mul i64 %storemerge2.reload, 8
  %3 = add i64 %2, ptrtoint (ptr @global_var_320 to i64)
  %4 = inttoptr i64 %3 to ptr
  store i32 1, ptr %4, align 8
  %5 = add i64 %2, add (i64 ptrtoint (ptr @global_var_320 to i64), i64 4)
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  %7 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2cb91, label %dec_label_pc_2cb54

dec_label_pc_2cb91:                               ; preds = %dec_label_pc_2cb54
  ret i64 %3
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

