@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_20ecc:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_20f15

dec_label_pc_20f15:                               ; preds = %dec_label_pc_20f15, %dec_label_pc_20ecc
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_20f2c, label %dec_label_pc_20f15

dec_label_pc_20f2c:                               ; preds = %dec_label_pc_20f15
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_20f97

dec_label_pc_20f97:                               ; preds = %dec_label_pc_20f97, %dec_label_pc_20f2c
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_20fae, label %dec_label_pc_20f97

dec_label_pc_20fae:                               ; preds = %dec_label_pc_20f97
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store ptr %9, ptr %dataBadBuffer_-40, align 8
  store i8 0, ptr %9, align 16
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  call void @anon0(ptr nonnull %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_2101b, label %dec_label_pc_21016

dec_label_pc_21016:                               ; preds = %dec_label_pc_20fae
  call void @__stack_chk_fail()
  br label %dec_label_pc_2101b

dec_label_pc_2101b:                               ; preds = %dec_label_pc_21016, %dec_label_pc_20fae
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_210c2:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %dataVoidPtr to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-27, i32 %3)
  call void @printLine(ptr %dataVoidPtr)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_21150, label %dec_label_pc_2114b

dec_label_pc_2114b:                               ; preds = %dec_label_pc_210c2
  call void @__stack_chk_fail()
  br label %dec_label_pc_21150

dec_label_pc_21150:                               ; preds = %dec_label_pc_2114b, %dec_label_pc_210c2
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

