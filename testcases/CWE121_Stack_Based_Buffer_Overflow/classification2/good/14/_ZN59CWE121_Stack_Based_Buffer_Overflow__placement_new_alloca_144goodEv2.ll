@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89064 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4643e:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_46487

dec_label_pc_46487:                               ; preds = %dec_label_pc_46487, %dec_label_pc_4643e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4649e, label %dec_label_pc_46487

dec_label_pc_4649e:                               ; preds = %dec_label_pc_46487
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_46509

dec_label_pc_46509:                               ; preds = %dec_label_pc_46509, %dec_label_pc_4649e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_46520, label %dec_label_pc_46509

dec_label_pc_46520:                               ; preds = %dec_label_pc_46509
  %7 = load i32, ptr @global_var_89064, align 4
  %8 = icmp eq i32 %7, 5
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_465a7, label %dec_label_pc_4657b

dec_label_pc_4657b:                               ; preds = %dec_label_pc_46520
  %10 = add i64 %4, 15
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  %13 = call ptr @_ZnwmPv(i64 4, ptr %12)
  %14 = bitcast ptr %13 to ptr
  store i32 5, ptr %14, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_465a7

dec_label_pc_465a7:                               ; preds = %dec_label_pc_4657b, %dec_label_pc_46520
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_465bc, label %dec_label_pc_465b7

dec_label_pc_465b7:                               ; preds = %dec_label_pc_465a7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_465bc

dec_label_pc_465bc:                               ; preds = %dec_label_pc_465b7, %dec_label_pc_465a7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

