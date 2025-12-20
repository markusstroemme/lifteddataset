@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_19850:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  %2 = call i64 @anon1(i64 %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_198aa, label %dec_label_pc_198a5

dec_label_pc_198a5:                               ; preds = %dec_label_pc_19850
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_198aa

dec_label_pc_198aa:                               ; preds = %dec_label_pc_198a5, %dec_label_pc_19850
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_19918:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_19958

dec_label_pc_19958:                               ; preds = %dec_label_pc_19958, %dec_label_pc_19918
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %2 = mul i64 %storemerge1.reload, 8
  %3 = add i64 %2, %0
  %4 = add i64 %3, -816
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 8
  %6 = add i64 %3, -812
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1998e, label %dec_label_pc_19958

dec_label_pc_1998e:                               ; preds = %dec_label_pc_19958
  %9 = inttoptr i64 %arg1 to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %11 = bitcast ptr %rdi to ptr
  %12 = load i32, ptr %11, align 8
  call void @printIntLine(i32 %12)
  %13 = icmp eq i64 %arg1, 0
  br i1 %13, label %dec_label_pc_199d5, label %dec_label_pc_199c6

dec_label_pc_199c6:                               ; preds = %dec_label_pc_1998e
  %14 = ptrtoint ptr %stack_var_-824 to i64
  %15 = and i64 %14, 4294967288
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %9, ptr %16)
  br label %dec_label_pc_199d5

dec_label_pc_199d5:                               ; preds = %dec_label_pc_199c6, %dec_label_pc_1998e
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_199ea, label %dec_label_pc_199e5

dec_label_pc_199e5:                               ; preds = %dec_label_pc_199d5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_199ea

dec_label_pc_199ea:                               ; preds = %dec_label_pc_199e5, %dec_label_pc_199d5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

