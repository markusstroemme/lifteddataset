@global_var_6d5b0 = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89050 = external local_unnamed_addr global i32
@global_var_891c8 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_41e7f:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-56 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-56 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_41ec8

dec_label_pc_41ec8:                               ; preds = %dec_label_pc_41ec8, %dec_label_pc_41e7f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_41edf, label %dec_label_pc_41ec8

dec_label_pc_41edf:                               ; preds = %dec_label_pc_41ec8
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %6 = sub i64 %2, %constexpr1
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_41f4a

dec_label_pc_41f4a:                               ; preds = %dec_label_pc_41f4a, %dec_label_pc_41edf
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_41f61, label %dec_label_pc_41f4a

dec_label_pc_41f61:                               ; preds = %dec_label_pc_41f4a
  %9 = load i32, ptr @global_var_891c8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_41fcb, label %dec_label_pc_41fba

dec_label_pc_41fba:                               ; preds = %dec_label_pc_41f61
  call void @printLine(ptr @global_var_6d5b0)
  br label %dec_label_pc_41ff7

dec_label_pc_41fcb:                               ; preds = %dec_label_pc_41f61
  %11 = add i64 %6, 15
  %12 = and i64 %11, -16
  %13 = load i32, ptr @global_var_89050, align 4
  %14 = icmp eq i32 %13, 0
  %spec.select = select i1 %14, i64 %1, i64 %12
  %15 = inttoptr i64 %spec.select to ptr
  %16 = call ptr @_ZnwmPv(i64 4, ptr %15)
  %17 = bitcast ptr %16 to ptr
  store i32 5, ptr %17, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_41ff7

dec_label_pc_41ff7:                               ; preds = %dec_label_pc_41fcb, %dec_label_pc_41fba
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %3, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_4200c, label %dec_label_pc_42007

dec_label_pc_42007:                               ; preds = %dec_label_pc_41ff7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4200c

dec_label_pc_4200c:                               ; preds = %dec_label_pc_42007, %dec_label_pc_41ff7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

