@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2f1e2:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 193505 to ptr), ptr %dataBuffer_-40, align 8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_2f236

dec_label_pc_2f236:                               ; preds = %dec_label_pc_2f236, %dec_label_pc_2f1e2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2f24d, label %dec_label_pc_2f236

dec_label_pc_2f24d:                               ; preds = %dec_label_pc_2f236
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %5, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_2f2d5, label %dec_label_pc_2f2d0

dec_label_pc_2f2d0:                               ; preds = %dec_label_pc_2f24d
  call void @__stack_chk_fail()
  br label %dec_label_pc_2f2d5

dec_label_pc_2f2d5:                               ; preds = %dec_label_pc_2f2d0, %dec_label_pc_2f24d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

