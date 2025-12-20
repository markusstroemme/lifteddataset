@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_218f4:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_2193d

dec_label_pc_2193d:                               ; preds = %dec_label_pc_2193d, %dec_label_pc_218f4
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_21954, label %dec_label_pc_2193d

dec_label_pc_21954:                               ; preds = %dec_label_pc_2193d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_219bf

dec_label_pc_219bf:                               ; preds = %dec_label_pc_219bf, %dec_label_pc_21954
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_219d6, label %dec_label_pc_219bf

dec_label_pc_219d6:                               ; preds = %dec_label_pc_219bf
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  call void @anon1(i64 %8)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_21a4b, label %dec_label_pc_21a46

dec_label_pc_21a46:                               ; preds = %dec_label_pc_219d6
  call void @__stack_chk_fail()
  br label %dec_label_pc_21a4b

dec_label_pc_21a4b:                               ; preds = %dec_label_pc_21a46, %dec_label_pc_219d6
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_21bbb:
  %stack_var_-27 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = inttoptr i64 %myStruct to ptr
  %6 = call ptr @memmove(ptr %5, ptr nonnull %stack_var_-27, i32 %4)
  call void @printLine(ptr %0)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_21c3e, label %dec_label_pc_21c39

dec_label_pc_21c39:                               ; preds = %dec_label_pc_21bbb
  call void @__stack_chk_fail()
  br label %dec_label_pc_21c3e

dec_label_pc_21c3e:                               ; preds = %dec_label_pc_21c39, %dec_label_pc_21bbb
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

