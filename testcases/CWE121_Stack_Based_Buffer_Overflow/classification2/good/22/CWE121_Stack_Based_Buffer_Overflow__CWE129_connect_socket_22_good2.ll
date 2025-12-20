@global_var_b4b24 = external constant [10 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_b4b68 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1120b:
  %stack_var_-68.03.reg2mem = alloca i32, align 4
  %stack_var_-68.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-68.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_11302, label %dec_label_pc_11255

dec_label_pc_11255:                               ; preds = %dec_label_pc_1120b
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4b24)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_112f8, label %dec_label_pc_112ac

dec_label_pc_112ac:                               ; preds = %dec_label_pc_11255
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_112f8, label %dec_label_pc_112d3

dec_label_pc_112d3:                               ; preds = %dec_label_pc_112ac
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_112f8

dec_label_pc_112f8:                               ; preds = %dec_label_pc_11255, %dec_label_pc_112d3, %dec_label_pc_112ac
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_11302

dec_label_pc_11302:                               ; preds = %dec_label_pc_1120b, %dec_label_pc_112f8
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  store i32 1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_22_goodB2G2Global, align 4
  call void @anon0(i32 %stack_var_-68.03.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_1132b, label %dec_label_pc_11326

dec_label_pc_11326:                               ; preds = %dec_label_pc_11302
  call void @__stack_chk_fail()
  br label %dec_label_pc_1132b

dec_label_pc_1132b:                               ; preds = %dec_label_pc_11326, %dec_label_pc_11302
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_114fc:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_22_goodB2G2Global, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1159b, label %dec_label_pc_11524

dec_label_pc_11524:                               ; preds = %dec_label_pc_114fc
  %3 = icmp ugt i32 %data, 9
  br i1 %3, label %dec_label_pc_1158a, label %dec_label_pc_11558

dec_label_pc_11558:                               ; preds = %dec_label_pc_11524
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1156e

dec_label_pc_1156e:                               ; preds = %dec_label_pc_1156e, %dec_label_pc_11558
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1159b, label %dec_label_pc_1156e

dec_label_pc_1158a:                               ; preds = %dec_label_pc_11524
  call void @printLine(ptr @global_var_b4b68)
  br label %dec_label_pc_1159b

dec_label_pc_1159b:                               ; preds = %dec_label_pc_1156e, %dec_label_pc_1158a, %dec_label_pc_114fc
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_115b0, label %dec_label_pc_115ab

dec_label_pc_115ab:                               ; preds = %dec_label_pc_1159b
  call void @__stack_chk_fail()
  br label %dec_label_pc_115b0

dec_label_pc_115b0:                               ; preds = %dec_label_pc_115ab, %dec_label_pc_1159b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

