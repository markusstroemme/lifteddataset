@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6fdb8:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %funcPtr_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %funcPtr_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6fe0e

dec_label_pc_6fe0e:                               ; preds = %dec_label_pc_6fe0e, %dec_label_pc_6fdb8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6fe25, label %dec_label_pc_6fe0e

dec_label_pc_6fe25:                               ; preds = %dec_label_pc_6fe0e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_6fe92

dec_label_pc_6fe92:                               ; preds = %dec_label_pc_6fe92, %dec_label_pc_6fe25
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_6fea9, label %dec_label_pc_6fe92

dec_label_pc_6fea9:                               ; preds = %dec_label_pc_6fe92
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  br i1 %9, label %dec_label_pc_6ff10, label %dec_label_pc_6ff0b

dec_label_pc_6ff0b:                               ; preds = %dec_label_pc_6fea9
  call void @__stack_chk_fail()
  br label %dec_label_pc_6ff10

dec_label_pc_6ff10:                               ; preds = %dec_label_pc_6ff0b, %dec_label_pc_6fea9
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

