@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_55083:
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_550d4

dec_label_pc_550d4:                               ; preds = %dec_label_pc_550d4, %dec_label_pc_55083
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_550eb, label %dec_label_pc_550d4

dec_label_pc_550eb:                               ; preds = %dec_label_pc_550d4
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  call void @anon0(i64 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %1, %6
  br i1 %7, label %dec_label_pc_55151, label %dec_label_pc_5514c

dec_label_pc_5514c:                               ; preds = %dec_label_pc_550eb
  call void @__stack_chk_fail()
  br label %dec_label_pc_55151

dec_label_pc_55151:                               ; preds = %dec_label_pc_5514c, %dec_label_pc_550eb
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_551f3:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-56 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-56, align 8
  %3 = inttoptr i64 %myStruct to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-56, i32 40)
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %2, %6
  br i1 %7, label %dec_label_pc_5527c, label %dec_label_pc_55277

dec_label_pc_55277:                               ; preds = %dec_label_pc_551f3
  call void @__stack_chk_fail()
  br label %dec_label_pc_5527c

dec_label_pc_5527c:                               ; preds = %dec_label_pc_55277, %dec_label_pc_551f3
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

